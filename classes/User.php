<?php 
require_once "Database.php";

class User{
	private static $database;
	
	private $User_ID;
	private $CustomerName;
	private $EmailId;
	private $ContactNo;
	private $TimeOfVisit;
	private $NoOfPerson;
	private $DateOfBooking;
	private $PrefferdFood;
	private $Occasion;
	private $TableNumber;
	
	function User($CustomerName, $EmailId, $ContactNo,
	              $TimeOfVisit, $NoOfPerson, $DateOfBooking,
				  $PrefferdFood, $Occasion,$TableNumber,$user_ID = NULL)
	{
		$this->CustomerName = $CustomerName;
		$this->EmailId  = $EmailId;		
		$this->ContactNo = $ContactNo;
		$this->TimeOfVisit = $TimeOfVisit;
		$this->NoOfPerson = $NoOfPerson;
		$this->DateOfBooking = $DateOfBooking;
		$this->PrefferdFood = $PrefferdFood;
		$this->Occasion = $Occasion;
		$this->TableNumber=$TableNumber;
		$this->User_ID = $user_ID;
	}
	public static function Init_Database(){
		if(!isset(self::$database)){
			self::$database = new Database_reserve();
		}
	}
	
	
	public function Insert(){
		try{
			self::Init_Database();
			$query = "INSERT INTO reserve_table (CustomerName, EmailId, ContactNo, TimeOfVisit, NoOfPerson, DateOfBooking, PrefferdFood,Occasion,TableNumber)";
			$query .= " VALUES(?,?,?,?,?,?,?,?,?)";
		    $connection = self::$database->Get_Connection();
			$statement  = $connection->prepare($query);
			$statement->bindParam(1, $this->CustomerName);
			$statement->bindParam(2, $this->EmailId);
			$statement->bindParam(3, $this->ContactNo);
			$statement->bindParam(4, $this->TimeOfVisit);
			$statement->bindParam(5, $this->NoOfPerson);
			$statement->bindParam(6, $this->DateOfBooking);
			$statement->bindParam(7, $this->PrefferdFood);
			$statement->bindParam(8, $this->Occasion);
			$statement->bindParam(9, $this->TableNumber);
			
			$res = $statement->execute();
			if($res == 1)
			{
				echo "<script>
		alert('Thanks for Booking');
		window.location.assign('index.php');
			
</script>";
}
			else
			{
					echo "<script>
		alert('Data Not Inserted . please try again');
		window.location.assign('index.php');
			
</script>";
				
			}
			
		}catch(PDOException $e){
			echo "INSERT Query Failed : ".$e->getMessage();
		}	
	}
	/*
	
		public function Email_Exists($email){
		try{
			self::Init_Database();
			$query = "select * from users where Email='$email')";
			
		    $connection = self::$database->Get_Connection();
			$statement  = $connection->prepare($query);
			
			$statement->execute();
			$result=$statement->setFetchMode(PDO::FETCH_ASSOC);
			print_r($result);
			if(!empty($result['User_ID'])
				return true;
			
				return false;
			
			
			//echo "User inserted ID = ".$connection->lastInsertId();
			
		}catch(PDOException $e){
			echo "Email Exits : ".$e->getMessage();
		}	
	}
	
		public function User_Exists($TimeOfVisit){
		try{
			self::Init_Database();
			$query = "select COUNT(*) from users where TimeOfVisit='$TimeOfVisit')";
			
		    $connection = self::$database->Get_Connection();
			$statement  = $connection->prepare($query);
			
			$statement->execute();
			$result=$statement->setFetchMode(PDO::FETCH_ASSOC);
			print_r($result);
			if(!empty($result['User_ID'])
				return true;
			
				return false;
			
			
			//echo "User inserted ID = ".$connection->lastInsertId();
			
		}catch(PDOException $e){
			echo "Email Exits : ".$e->getMessage();
		}	
	}
	*/
}
?>