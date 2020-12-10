import gtk.ApplicationWindow;
import gtk.Application;
import gtk.Button;
import gtk.Grid;
import gtk.Main;

import handy.CarouselIndicatorLines;
import handy.Carousel;
import handy.Keypad;
import handy.Avatar;

int main(string [] args) {
	Main.init(args);

	Application test_app = new Application("org.libhandy.d.test.org", GApplicationFlags.FLAGS_NONE);
	
	test_app.addOnActivate((gio.Application.Application) {
		ApplicationWindow win = new ApplicationWindow(test_app);
		
		win.setTitle("Test application");
		win.setBorderWidth(5);

		Grid win_grid = new Grid();

		win_grid.setRowSpacing(5);
		win_grid.setRowHomogeneous(true);

		win_grid.setColumnSpacing(5);
		win_grid.setColumnHomogeneous(true);

		Carousel car = new Carousel();
		CarouselIndicatorLines ind = new CarouselIndicatorLines();

		ind.setCarousel(car);

		win_grid.attach(car, 0, 0, 4, 4);
		win_grid.attach(ind, 0, 4, 4, 1);

		Button test_btn = new Button("Hey");
		car.insert(test_btn, 0);

		Keypad key = new Keypad(true, true);
		car.insert(key, 1);

		Avatar ava = new Avatar(64, "Konstantin M", true);
		car.insert(ava, 2);

		win.add(win_grid);

		win.showAll();
	});

	test_app.run(args);
	return 0;
}
