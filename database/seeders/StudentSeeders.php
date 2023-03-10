<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Str;
use Faker\Factory as Faker; 
class StudentSeeders extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker=Faker::create();
		foreach(range(1,100) as $value){
			DB::table('students') -> insert([
				'name' => $faker->name,
				'email' => $faker->email,
				'Address' =>$faker->address,
                'studycourse' =>$faker->randomElement(['Software Engineering','Graphic & Multimedia','Network & Security'])
				]);

                                     }
    }
}
