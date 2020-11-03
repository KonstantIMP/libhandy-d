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
module handy.Avatar;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.DrawingArea;
private import gtk.Widget;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class Avatar : DrawingArea
{
	/** the main Gtk struct */
	protected HdyAvatar* hdyAvatar;

	/** Get the main Gtk struct */
	public HdyAvatar* getAvatarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyAvatar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyAvatar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyAvatar* hdyAvatar, bool ownedRef = false)
	{
		this.hdyAvatar = hdyAvatar;
		super(cast(GtkDrawingArea*)hdyAvatar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_avatar_get_type();
	}

	/**
	 * Creates a new #HdyAvatar.
	 *
	 * Params:
	 *     size = The size of the avatar
	 *     text = The text used to generate the color and initials if
	 *         @show_initials is %TRUE. The color is selected at random if @text is empty.
	 *     showInitials = whether to show the initials or the fallback icon on
	 *         top of the color generated based on @text.
	 *
	 * Returns: the newly created #HdyAvatar
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int size, string text, bool showInitials)
	{
		auto __p = hdy_avatar_new(size, Str.toStringz(text), showInitials);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyAvatar*) __p);
	}

	/**
	 * Gets the name of the icon in the icon theme to use when the icon should be
	 * displayed.
	 *
	 * Returns: the name of the icon from the icon theme.
	 *
	 * Since: 1.0
	 */
	public string getIconName()
	{
		return Str.toString(hdy_avatar_get_icon_name(hdyAvatar));
	}

	/**
	 * Returns whether initials are used for the fallback or the icon.
	 *
	 * Returns: %TRUE if the initials are used for the fallback.
	 */
	public bool getShowInitials()
	{
		return hdy_avatar_get_show_initials(hdyAvatar) != 0;
	}

	/**
	 * Returns the size of the avatar.
	 *
	 * Returns: the size of the avatar.
	 */
	public int getSize()
	{
		return hdy_avatar_get_size(hdyAvatar);
	}

	/**
	 * Get the text used to generate the fallback initials and color
	 *
	 * Returns: returns the text used to generate
	 *     the fallback initials. This is the internal string used by
	 *     the #HdyAvatar, and must not be modified.
	 */
	public string getText()
	{
		return Str.toString(hdy_avatar_get_text(hdyAvatar));
	}

	/**
	 * Sets the name of the icon in the icon theme to use when the icon should be
	 * displayed.
	 * If no name is set, the avatar-default-symbolic icon will be used.
	 * If the name doesn't match a valid icon, it is an error and no icon will be
	 * displayed.
	 * If the icon theme is changed, the image will be updated automatically.
	 *
	 * Params:
	 *     iconName = the name of the icon from the icon theme
	 *
	 * Since: 1.0
	 */
	public void setIconName(string iconName)
	{
		hdy_avatar_set_icon_name(hdyAvatar, Str.toStringz(iconName));
	}

	/**
	 * A callback which is called when the custom image need to be reloaded for some
	 * reason (e.g. scale-factor changes).
	 *
	 * Params:
	 *     loadImage = callback to set a custom image
	 *     userData = user data passed to @load_image
	 *     destroy = destroy notifier for @user_data
	 */
	public void setImageLoadFunc(HdyAvatarImageLoadFunc loadImage, void* userData, GDestroyNotify destroy)
	{
		hdy_avatar_set_image_load_func(hdyAvatar, loadImage, userData, destroy);
	}

	/**
	 * Sets whether the initials should be shown on the fallback avatar or the icon.
	 *
	 * Params:
	 *     showInitials = whether the initials should be shown on the fallback avatar
	 *         or the icon.
	 */
	public void setShowInitials(bool showInitials)
	{
		hdy_avatar_set_show_initials(hdyAvatar, showInitials);
	}

	/**
	 * Sets the size of the avatar.
	 *
	 * Params:
	 *     size = The size to be used for the avatar
	 */
	public void setSize(int size)
	{
		hdy_avatar_set_size(hdyAvatar, size);
	}

	/**
	 * Set the text used to generate the fallback initials color
	 *
	 * Params:
	 *     text = the text used to get the initials and color
	 */
	public void setText(string text)
	{
		hdy_avatar_set_text(hdyAvatar, Str.toStringz(text));
	}
}
