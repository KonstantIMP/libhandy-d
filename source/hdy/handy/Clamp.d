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
module handy.Clamp;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Bin;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class Clamp : Bin, OrientableIF
{
	/** the main Gtk struct */
	protected HdyClamp* hdyClamp;

	/** Get the main Gtk struct */
	public HdyClamp* getClampStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyClamp;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyClamp;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyClamp* hdyClamp, bool ownedRef = false)
	{
		this.hdyClamp = hdyClamp;
		super(cast(GtkBin*)hdyClamp, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(HdyClamp);


	/** */
	public static GType getType()
	{
		return hdy_clamp_get_type();
	}

	/**
	 * Creates a new #HdyClamp.
	 *
	 * Returns: a new #HdyClamp
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = hdy_clamp_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyClamp*) __p);
	}

	/**
	 * Gets the maximum size to allocate to the contained child. It is the width if
	 * @self is horizontal, or the height if it is vertical.
	 *
	 * Returns: the maximum width to allocate to the contained child.
	 *
	 * Since: 1.0
	 */
	public int getMaximumSize()
	{
		return hdy_clamp_get_maximum_size(hdyClamp);
	}

	/**
	 * Gets the size starting from which the clamp will tighten its grip on the
	 * child.
	 *
	 * Returns: the size starting from which the clamp will tighten its grip on the
	 *     child.
	 *
	 * Since: 1.0
	 */
	public int getTighteningThreshold()
	{
		return hdy_clamp_get_tightening_threshold(hdyClamp);
	}

	/**
	 * Sets the maximum size to allocate to the contained child. It is the width if
	 * @self is horizontal, or the height if it is vertical.
	 *
	 * Params:
	 *     maximumSize = the maximum size
	 *
	 * Since: 1.0
	 */
	public void setMaximumSize(int maximumSize)
	{
		hdy_clamp_set_maximum_size(hdyClamp, maximumSize);
	}

	/**
	 * Sets the size starting from which the clamp will tighten its grip on the
	 * child.
	 *
	 * Params:
	 *     tighteningThreshold = the tightening threshold
	 *
	 * Since: 1.0
	 */
	public void setTighteningThreshold(int tighteningThreshold)
	{
		hdy_clamp_set_tightening_threshold(hdyClamp, tighteningThreshold);
	}
}
