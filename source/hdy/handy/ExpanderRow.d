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
module handy.ExpanderRow;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Widget;
private import handy.PreferencesRow;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class ExpanderRow : PreferencesRow
{
	/** the main Gtk struct */
	protected HdyExpanderRow* hdyExpanderRow;

	/** Get the main Gtk struct */
	public HdyExpanderRow* getExpanderRowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyExpanderRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyExpanderRow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyExpanderRow* hdyExpanderRow, bool ownedRef = false)
	{
		this.hdyExpanderRow = hdyExpanderRow;
		super(cast(HdyPreferencesRow*)hdyExpanderRow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_expander_row_get_type();
	}

	/**
	 * Creates a new #HdyExpanderRow.
	 *
	 * Returns: a new #HdyExpanderRow
	 *
	 * Since: 0.0.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = hdy_expander_row_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyExpanderRow*) __p);
	}

	/**
	 * Adds an action widget to @self.
	 *
	 * Params:
	 *     widget = the action widget
	 *
	 * Since: 1.0
	 */
	public void addAction(Widget widget)
	{
		hdy_expander_row_add_action(hdyExpanderRow, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Adds a prefix widget to @self.
	 *
	 * Params:
	 *     widget = the prefix widget
	 *
	 * Since: 1.0
	 */
	public void addPrefix(Widget widget)
	{
		hdy_expander_row_add_prefix(hdyExpanderRow, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Gets whether the expansion of @self is enabled.
	 *
	 * Returns: whether the expansion of @self is enabled.
	 *
	 * Since: 0.0.6
	 */
	public bool getEnableExpansion()
	{
		return hdy_expander_row_get_enable_expansion(hdyExpanderRow) != 0;
	}

	/** */
	public bool getExpanded()
	{
		return hdy_expander_row_get_expanded(hdyExpanderRow) != 0;
	}

	/**
	 * Gets the icon name for @self.
	 *
	 * Returns: the icon name for @self.
	 *
	 * Since: 1.0
	 */
	public string getIconName()
	{
		return Str.toString(hdy_expander_row_get_icon_name(hdyExpanderRow));
	}

	/**
	 * Gets whether the switch enabling the expansion of @self is visible.
	 *
	 * Returns: whether the switch enabling the expansion of @self is visible.
	 *
	 * Since: 0.0.6
	 */
	public bool getShowEnableSwitch()
	{
		return hdy_expander_row_get_show_enable_switch(hdyExpanderRow) != 0;
	}

	/**
	 * Gets the subtitle for @self.
	 *
	 * Returns: the subtitle for @self, or %NULL.
	 *
	 * Since: 1.0
	 */
	public string getSubtitle()
	{
		return Str.toString(hdy_expander_row_get_subtitle(hdyExpanderRow));
	}

	/**
	 * Gets whether an embedded underline in the text of the title and subtitle
	 * labels indicates a mnemonic. See hdy_expander_row_set_use_underline().
	 *
	 * Returns: %TRUE if an embedded underline in the title and subtitle labels
	 *     indicates the mnemonic accelerator keys.
	 *
	 * Since: 1.0
	 */
	public override bool getUseUnderline()
	{
		return hdy_expander_row_get_use_underline(hdyExpanderRow) != 0;
	}

	/**
	 * Sets whether the expansion of @self is enabled.
	 *
	 * Params:
	 *     enableExpansion = %TRUE to enable the expansion
	 *
	 * Since: 0.0.6
	 */
	public void setEnableExpansion(bool enableExpansion)
	{
		hdy_expander_row_set_enable_expansion(hdyExpanderRow, enableExpansion);
	}

	/** */
	public void setExpanded(bool expanded)
	{
		hdy_expander_row_set_expanded(hdyExpanderRow, expanded);
	}

	/**
	 * Sets the icon name for @self.
	 *
	 * Params:
	 *     iconName = the icon name
	 *
	 * Since: 1.0
	 */
	public void setIconName(string iconName)
	{
		hdy_expander_row_set_icon_name(hdyExpanderRow, Str.toStringz(iconName));
	}

	/**
	 * Sets whether the switch enabling the expansion of @self is visible.
	 *
	 * Params:
	 *     showEnableSwitch = %TRUE to show the switch enabling the expansion
	 *
	 * Since: 0.0.6
	 */
	public void setShowEnableSwitch(bool showEnableSwitch)
	{
		hdy_expander_row_set_show_enable_switch(hdyExpanderRow, showEnableSwitch);
	}

	/**
	 * Sets the subtitle for @self.
	 *
	 * Params:
	 *     subtitle = the subtitle
	 *
	 * Since: 1.0
	 */
	public void setSubtitle(string subtitle)
	{
		hdy_expander_row_set_subtitle(hdyExpanderRow, Str.toStringz(subtitle));
	}

	/**
	 * If true, an underline in the text of the title and subtitle labels indicates
	 * the next character should be used for the mnemonic accelerator key.
	 *
	 * Params:
	 *     useUnderline = %TRUE if underlines in the text indicate mnemonics
	 *
	 * Since: 1.0
	 */
	public override void setUseUnderline(bool useUnderline)
	{
		hdy_expander_row_set_use_underline(hdyExpanderRow, useUnderline);
	}
}
