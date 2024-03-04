package org.light.lightAssetKit.components;

import org.light.lightAssetKit.enums.ReplaceType;
import org.light.lightAssetKit.enums.ScaleMode;
/* loaded from: classes7.dex */
public class ReplaceItem {
    public int index = -1;
    public String src = "";
    public ReplaceType replaceType = ReplaceType.None;
    public int sourceIndex = -1;
    public int textMaxLength = 0;
    public ScaleMode scaleMode = ScaleMode.LetterBox;
    public boolean interactive = false;
    public TextReplaceItem textReplaceItem = new TextReplaceItem();
    public String layerName = "";
}
