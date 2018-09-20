<?php

use Illuminate\Database\Seeder;

class FilmsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = \Faker\Factory::create();

        for($i=0;$i<100;$i++) {
            DB::table('films')->insert([
                'name' => str_random(10),
                'description' => $faker->paragraph,
                'release_date' => $faker->date(),
                'rating' => $faker->numberBetween(0, 5),
                'ticket_price' => $faker->numberBetween(100, 500),
                'country' => $faker->country,
                'genre' => str_random(10),
                'photo' => '1'
            ]);
        }
    }
}
