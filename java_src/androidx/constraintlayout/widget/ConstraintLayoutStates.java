package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.light.utils.FileUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class ConstraintLayoutStates {
    private static final boolean DEBUG = false;
    public static final String TAG = "ConstraintLayoutStates";
    private final ConstraintLayout mConstraintLayout;
    ConstraintSet mDefaultConstraintSet;
    int mCurrentStateId = -1;
    int mCurrentConstraintNumber = -1;
    private SparseArray<State> mStateList = new SparseArray<>();
    private SparseArray<ConstraintSet> mConstraintSetMap = new SparseArray<>();
    private ConstraintsChangedListener mConstraintsChangedListener = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class State {
        int mConstraintID;
        ConstraintSet mConstraintSet;
        int mId;
        ArrayList<Variant> mVariants = new ArrayList<>();

        public State(Context context, XmlPullParser xmlPullParser) {
            this.mConstraintID = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i9 = 0; i9 < indexCount; i9++) {
                int index = obtainStyledAttributes.getIndex(i9);
                if (index == R.styleable.State_android_id) {
                    this.mId = obtainStyledAttributes.getResourceId(index, this.mId);
                } else if (index == R.styleable.State_constraints) {
                    this.mConstraintID = obtainStyledAttributes.getResourceId(index, this.mConstraintID);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintID);
                    context.getResources().getResourceName(this.mConstraintID);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.mConstraintSet = constraintSet;
                        constraintSet.clone(context, this.mConstraintID);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        void add(Variant variant) {
            this.mVariants.add(variant);
        }

        public int findMatch(float f10, float f11) {
            for (int i9 = 0; i9 < this.mVariants.size(); i9++) {
                if (this.mVariants.get(i9).match(f10, f11)) {
                    return i9;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Variant {
        int mConstraintID;
        ConstraintSet mConstraintSet;
        int mId;
        float mMaxHeight;
        float mMaxWidth;
        float mMinHeight;
        float mMinWidth;

        public Variant(Context context, XmlPullParser xmlPullParser) {
            this.mMinWidth = Float.NaN;
            this.mMinHeight = Float.NaN;
            this.mMaxWidth = Float.NaN;
            this.mMaxHeight = Float.NaN;
            this.mConstraintID = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i9 = 0; i9 < indexCount; i9++) {
                int index = obtainStyledAttributes.getIndex(i9);
                if (index == R.styleable.Variant_constraints) {
                    this.mConstraintID = obtainStyledAttributes.getResourceId(index, this.mConstraintID);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintID);
                    context.getResources().getResourceName(this.mConstraintID);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.mConstraintSet = constraintSet;
                        constraintSet.clone(context, this.mConstraintID);
                    }
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.mMaxHeight = obtainStyledAttributes.getDimension(index, this.mMaxHeight);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.mMinHeight = obtainStyledAttributes.getDimension(index, this.mMinHeight);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.mMaxWidth = obtainStyledAttributes.getDimension(index, this.mMaxWidth);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.mMinWidth = obtainStyledAttributes.getDimension(index, this.mMinWidth);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        boolean match(float f10, float f11) {
            if (Float.isNaN(this.mMinWidth) || f10 >= this.mMinWidth) {
                if (Float.isNaN(this.mMinHeight) || f11 >= this.mMinHeight) {
                    if (Float.isNaN(this.mMaxWidth) || f10 <= this.mMaxWidth) {
                        return Float.isNaN(this.mMaxHeight) || f11 <= this.mMaxHeight;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConstraintLayoutStates(Context context, ConstraintLayout constraintLayout, int i9) {
        this.mConstraintLayout = constraintLayout;
        load(context, i9);
    }

    private void load(Context context, int i9) {
        XmlResourceParser xml = context.getResources().getXml(i9);
        State state = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                char c10 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                    continue;
                } else if (eventType != 2) {
                    continue;
                } else {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c10 = 4;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                c10 = 2;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                c10 = 0;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c10 = 3;
                                break;
                            }
                            c10 = 65535;
                            break;
                        default:
                            c10 = 65535;
                            break;
                    }
                    if (c10 == 2) {
                        state = new State(context, xml);
                        this.mStateList.put(state.mId, state);
                        continue;
                    } else if (c10 == 3) {
                        Variant variant = new Variant(context, xml);
                        if (state != null) {
                            state.add(variant);
                            continue;
                        } else {
                            continue;
                        }
                    } else if (c10 != 4) {
                        continue;
                    } else {
                        parseConstraintSet(context, xml);
                        continue;
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    private void parseConstraintSet(Context context, XmlPullParser xmlPullParser) {
        ConstraintSet constraintSet = new ConstraintSet();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i9 = 0; i9 < attributeCount; i9++) {
            String attributeName = xmlPullParser.getAttributeName(i9);
            String attributeValue = xmlPullParser.getAttributeValue(i9);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains(FileUtils.RES_PREFIX_STORAGE) ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                constraintSet.load(context, xmlPullParser);
                this.mConstraintSetMap.put(identifier, constraintSet);
                return;
            }
        }
    }

    public boolean needsToChange(int i9, float f10, float f11) {
        int i10 = this.mCurrentStateId;
        if (i10 != i9) {
            return true;
        }
        State valueAt = i9 == -1 ? this.mStateList.valueAt(0) : this.mStateList.get(i10);
        int i11 = this.mCurrentConstraintNumber;
        return (i11 == -1 || !valueAt.mVariants.get(i11).match(f10, f11)) && this.mCurrentConstraintNumber != valueAt.findMatch(f10, f11);
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.mConstraintsChangedListener = constraintsChangedListener;
    }

    public void updateConstraints(int i9, float f10, float f11) {
        ConstraintSet constraintSet;
        int i10;
        State state;
        int findMatch;
        ConstraintSet constraintSet2;
        int i11;
        int i12 = this.mCurrentStateId;
        if (i12 == i9) {
            if (i9 == -1) {
                state = this.mStateList.valueAt(0);
            } else {
                state = this.mStateList.get(i12);
            }
            int i13 = this.mCurrentConstraintNumber;
            if ((i13 == -1 || !state.mVariants.get(i13).match(f10, f11)) && this.mCurrentConstraintNumber != (findMatch = state.findMatch(f10, f11))) {
                if (findMatch == -1) {
                    constraintSet2 = this.mDefaultConstraintSet;
                } else {
                    constraintSet2 = state.mVariants.get(findMatch).mConstraintSet;
                }
                if (findMatch == -1) {
                    i11 = state.mConstraintID;
                } else {
                    i11 = state.mVariants.get(findMatch).mConstraintID;
                }
                if (constraintSet2 == null) {
                    return;
                }
                this.mCurrentConstraintNumber = findMatch;
                ConstraintsChangedListener constraintsChangedListener = this.mConstraintsChangedListener;
                if (constraintsChangedListener != null) {
                    constraintsChangedListener.preLayoutChange(-1, i11);
                }
                constraintSet2.applyTo(this.mConstraintLayout);
                ConstraintsChangedListener constraintsChangedListener2 = this.mConstraintsChangedListener;
                if (constraintsChangedListener2 != null) {
                    constraintsChangedListener2.postLayoutChange(-1, i11);
                    return;
                }
                return;
            }
            return;
        }
        this.mCurrentStateId = i9;
        State state2 = this.mStateList.get(i9);
        int findMatch2 = state2.findMatch(f10, f11);
        if (findMatch2 == -1) {
            constraintSet = state2.mConstraintSet;
        } else {
            constraintSet = state2.mVariants.get(findMatch2).mConstraintSet;
        }
        if (findMatch2 == -1) {
            i10 = state2.mConstraintID;
        } else {
            i10 = state2.mVariants.get(findMatch2).mConstraintID;
        }
        if (constraintSet == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i9 + ", dim =" + f10 + ", " + f11);
            return;
        }
        this.mCurrentConstraintNumber = findMatch2;
        ConstraintsChangedListener constraintsChangedListener3 = this.mConstraintsChangedListener;
        if (constraintsChangedListener3 != null) {
            constraintsChangedListener3.preLayoutChange(i9, i10);
        }
        constraintSet.applyTo(this.mConstraintLayout);
        ConstraintsChangedListener constraintsChangedListener4 = this.mConstraintsChangedListener;
        if (constraintsChangedListener4 != null) {
            constraintsChangedListener4.postLayoutChange(i9, i10);
        }
    }
}
