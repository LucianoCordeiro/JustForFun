<?php
	class Cat {

		private $name;
		private $age;

		public function getName() {
			return $this->name;
		}

		public function setName($name) {
			$this->name = $name;
		}

		public function getAge() {
			return $this->age;
		}

		public function setAge($age) {
			$this->age = $age;
		}

		public function showData() {
			return "My name is " . $this->getName() . " and my age is " . $this->getAge();
		}
	}

	$new_cat = new Cat();
	$new_cat->setName("Mario");
	$new_cat->setAge(26);
	echo $new_cat->showData();

?>
