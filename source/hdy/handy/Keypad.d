/*
 * This file is part of d-handy.
 *
 * d-handy is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * d-handy is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with d-handy; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
module handy.Keypad;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Bin;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Entry;
private import gtk.Widget;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class Keypad : Bin
{
	/** the main Gtk struct */
	protected HdyKeypad* hdyKeypad;

	/** Get the main Gtk struct */
	public HdyKeypad* getKeypadStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyKeypad;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyKeypad;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyKeypad* hdyKeypad, bool ownedRef = false)
	{
		this.hdyKeypad = hdyKeypad;
		super(cast(GtkBin*)hdyKeypad, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_keypad_get_type();
	}

	/**
	 * Create a new #HdyKeypad widget.
	 *
	 * Params:
	 *     symbolsVisible = whether the hash, plus, and asterisk symbols should be visible
	 *     lettersVisible = whether the letters below the digits should be visible
	 *
	 * Returns: the newly created #HdyKeypad widget
	 *
	 * Since: 0.0.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(bool symbolsVisible, bool lettersVisible)
	{
		auto __p = hdy_keypad_new(symbolsVisible, lettersVisible);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyKeypad*) __p);
	}

	/**
	 * Returns the amount of space between the columns of @self.
	 *
	 * Returns: the column spacing of @self
	 *
	 * Since: 1.0
	 */
	public uint getColumnSpacing()
	{
		return hdy_keypad_get_column_spacing(hdyKeypad);
	}

	/**
	 * Returns the widget for the lower right corner (or left, in RTL locales) of
	 * @self.
	 *
	 * Returns: the end action widget
	 *
	 * Since: 1.0
	 */
	public Widget getEndAction()
	{
		auto __p = hdy_keypad_get_end_action(hdyKeypad);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Get the connected entry. See hdy_keypad_set_entry() for details.
	 *
	 * Returns: the set #GtkEntry or %NULL if no widget was set
	 *
	 * Since: 1.0
	 */
	public Entry getEntry()
	{
		auto __p = hdy_keypad_get_entry(hdyKeypad);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Entry)(cast(GtkEntry*) __p);
	}

	/**
	 * Returns whether @self should display the standard letters below the digits on
	 * its buttons.
	 *
	 * Returns: whether the letters below the digits should be visible
	 *
	 * Since: 1.0
	 */
	public bool getLettersVisible()
	{
		return hdy_keypad_get_letters_visible(hdyKeypad) != 0;
	}

	/**
	 * Returns the amount of space between the rows of @self.
	 *
	 * Returns: the row spacing of @self
	 *
	 * Since: 1.0
	 */
	public uint getRowSpacing()
	{
		return hdy_keypad_get_row_spacing(hdyKeypad);
	}

	/**
	 * Returns the widget for the lower left corner (or right, in RTL locales) of
	 * @self.
	 *
	 * Returns: the start action widget
	 *
	 * Since: 1.0
	 */
	public Widget getStartAction()
	{
		auto __p = hdy_keypad_get_start_action(hdyKeypad);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether @self should display the standard letters below the digits on
	 * its buttons.
	 *
	 * Returns Whether @self should display the hash and asterisk buttons, and
	 * should display the plus symbol at the bottom of its 0 button.
	 *
	 * Returns: whether the hash, plus, and asterisk symbols should be visible
	 *
	 * Since: 1.0
	 */
	public bool getSymbolsVisible()
	{
		return hdy_keypad_get_symbols_visible(hdyKeypad) != 0;
	}

	/**
	 * Sets the amount of space between columns of @self.
	 *
	 * Params:
	 *     spacing = the amount of space to insert between columns
	 *
	 * Since: 1.0
	 */
	public void setColumnSpacing(uint spacing)
	{
		hdy_keypad_set_column_spacing(hdyKeypad, spacing);
	}

	/**
	 * Sets the widget for the lower right corner (or left, in RTL locales) of
	 * @self.
	 *
	 * Params:
	 *     endAction = the end action widget
	 *
	 * Since: 1.0
	 */
	public void setEndAction(Widget endAction)
	{
		hdy_keypad_set_end_action(hdyKeypad, (endAction is null) ? null : endAction.getWidgetStruct());
	}

	/**
	 * Binds @entry to @self and blocks any input which wouldn't be possible to type
	 * with with the keypad.
	 *
	 * Params:
	 *     entry = a #GtkEntry
	 *
	 * Since: 0.0.12
	 */
	public void setEntry(Entry entry)
	{
		hdy_keypad_set_entry(hdyKeypad, (entry is null) ? null : entry.getEntryStruct());
	}

	/**
	 * Sets whether @self should display the standard letters below the digits on
	 * its buttons.
	 *
	 * Params:
	 *     lettersVisible = whether the letters below the digits should be visible
	 *
	 * Since: 1.0
	 */
	public void setLettersVisible(bool lettersVisible)
	{
		hdy_keypad_set_letters_visible(hdyKeypad, lettersVisible);
	}

	/**
	 * Sets the amount of space between rows of @self.
	 *
	 * Params:
	 *     spacing = the amount of space to insert between rows
	 *
	 * Since: 1.0
	 */
	public void setRowSpacing(uint spacing)
	{
		hdy_keypad_set_row_spacing(hdyKeypad, spacing);
	}

	/**
	 * Sets the widget for the lower left corner (or right, in RTL locales) of
	 * @self.
	 *
	 * Params:
	 *     startAction = the start action widget
	 *
	 * Since: 1.0
	 */
	public void setStartAction(Widget startAction)
	{
		hdy_keypad_set_start_action(hdyKeypad, (startAction is null) ? null : startAction.getWidgetStruct());
	}

	/**
	 * Sets whether @self should display the hash and asterisk buttons, and should
	 * display the plus symbol at the bottom of its 0 button.
	 *
	 * Params:
	 *     symbolsVisible = whether the hash, plus, and asterisk symbols should be visible
	 *
	 * Since: 1.0
	 */
	public void setSymbolsVisible(bool symbolsVisible)
	{
		hdy_keypad_set_symbols_visible(hdyKeypad, symbolsVisible);
	}
}
