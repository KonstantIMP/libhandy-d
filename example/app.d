import gtk.MainWindow;
import gtk.VBox;
import gtk.Entry;
import gtk.Main;
import gobject.Signals;
import handy.Keypad;

void main(string[] args)
{
	Main.init(args);

	auto window = new MainWindow("Keypad Example");
	auto vbox = new VBox(false, 18);
	auto entry = new Entry();
	auto keypad = new Keypad(true, false);

	vbox.add(entry);
	vbox.add(keypad);
	keypad.setRowSpacing(6);
	keypad.setColumnSpacing(6);

	keypad.setEntry(entry);

	window.add(vbox);
	window.showAll();

	Main.run();
}