function AlarmClock() : Artifact() constructor {
	name = "Alarm Clock";
	rank = "C";
	price = 70;
	OnInit = function () {
		global.reduce_skill_cool += 0.1;
	}
}