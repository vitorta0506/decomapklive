package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;
    int direction;
    WidgetRun firstRun;
    int groupIndex;
    WidgetRun lastRun;
    public int position = 0;
    public boolean dual = false;
    ArrayList<WidgetRun> runs = new ArrayList<>();

    public RunGroup(WidgetRun widgetRun, int i9) {
        this.firstRun = null;
        this.lastRun = null;
        int i10 = index;
        this.groupIndex = i10;
        index = i10 + 1;
        this.firstRun = widgetRun;
        this.lastRun = widgetRun;
        this.direction = i9;
    }

    private boolean defineTerminalWidget(WidgetRun widgetRun, int i9) {
        DependencyNode dependencyNode;
        WidgetRun widgetRun2;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun3;
        if (widgetRun.widget.isTerminalWidget[i9]) {
            for (Dependency dependency : widgetRun.start.dependencies) {
                if ((dependency instanceof DependencyNode) && (widgetRun3 = (dependencyNode2 = (DependencyNode) dependency).run) != widgetRun && dependencyNode2 == widgetRun3.start) {
                    if (widgetRun instanceof ChainRun) {
                        Iterator<WidgetRun> it = ((ChainRun) widgetRun).widgets.iterator();
                        while (it.hasNext()) {
                            defineTerminalWidget(it.next(), i9);
                        }
                    } else if (!(widgetRun instanceof HelperReferences)) {
                        widgetRun.widget.isTerminalWidget[i9] = false;
                    }
                    defineTerminalWidget(dependencyNode2.run, i9);
                }
            }
            for (Dependency dependency2 : widgetRun.end.dependencies) {
                if ((dependency2 instanceof DependencyNode) && (widgetRun2 = (dependencyNode = (DependencyNode) dependency2).run) != widgetRun && dependencyNode == widgetRun2.start) {
                    if (widgetRun instanceof ChainRun) {
                        Iterator<WidgetRun> it2 = ((ChainRun) widgetRun).widgets.iterator();
                        while (it2.hasNext()) {
                            defineTerminalWidget(it2.next(), i9);
                        }
                    } else if (!(widgetRun instanceof HelperReferences)) {
                        widgetRun.widget.isTerminalWidget[i9] = false;
                    }
                    defineTerminalWidget(dependencyNode.run, i9);
                }
            }
            return false;
        }
        return false;
    }

    private long traverseEnd(DependencyNode dependencyNode, long j10) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j10;
        }
        int size = dependencyNode.dependencies.size();
        long j11 = j10;
        for (int i9 = 0; i9 < size; i9++) {
            Dependency dependency = dependencyNode.dependencies.get(i9);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.run != widgetRun) {
                    j11 = Math.min(j11, traverseEnd(dependencyNode2, dependencyNode2.margin + j10));
                }
            }
        }
        if (dependencyNode == widgetRun.end) {
            long wrapDimension = j10 - widgetRun.getWrapDimension();
            return Math.min(Math.min(j11, traverseEnd(widgetRun.start, wrapDimension)), wrapDimension - widgetRun.start.margin);
        }
        return j11;
    }

    private long traverseStart(DependencyNode dependencyNode, long j10) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j10;
        }
        int size = dependencyNode.dependencies.size();
        long j11 = j10;
        for (int i9 = 0; i9 < size; i9++) {
            Dependency dependency = dependencyNode.dependencies.get(i9);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.run != widgetRun) {
                    j11 = Math.max(j11, traverseStart(dependencyNode2, dependencyNode2.margin + j10));
                }
            }
        }
        if (dependencyNode == widgetRun.start) {
            long wrapDimension = j10 + widgetRun.getWrapDimension();
            return Math.max(Math.max(j11, traverseStart(widgetRun.end, wrapDimension)), wrapDimension - widgetRun.end.margin);
        }
        return j11;
    }

    public void add(WidgetRun widgetRun) {
        this.runs.add(widgetRun);
        this.lastRun = widgetRun;
    }

    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int i9) {
        long wrapDimension;
        int i10;
        WidgetRun widgetRun = this.firstRun;
        if (widgetRun instanceof ChainRun) {
            if (((ChainRun) widgetRun).orientation != i9) {
                return 0L;
            }
        } else if (i9 == 0) {
            if (!(widgetRun instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof VerticalWidgetRun)) {
            return 0L;
        }
        DependencyNode dependencyNode = (i9 == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).start;
        DependencyNode dependencyNode2 = (i9 == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).end;
        boolean contains = widgetRun.start.targets.contains(dependencyNode);
        boolean contains2 = this.firstRun.end.targets.contains(dependencyNode2);
        long wrapDimension2 = this.firstRun.getWrapDimension();
        if (contains && contains2) {
            long traverseStart = traverseStart(this.firstRun.start, 0L);
            long traverseEnd = traverseEnd(this.firstRun.end, 0L);
            long j10 = traverseStart - wrapDimension2;
            WidgetRun widgetRun2 = this.firstRun;
            int i11 = widgetRun2.end.margin;
            if (j10 >= (-i11)) {
                j10 += i11;
            }
            int i12 = widgetRun2.start.margin;
            long j11 = ((-traverseEnd) - wrapDimension2) - i12;
            if (j11 >= i12) {
                j11 -= i12;
            }
            float biasPercent = widgetRun2.widget.getBiasPercent(i9);
            float f10 = (float) (biasPercent > 0.0f ? (((float) j11) / biasPercent) + (((float) j10) / (1.0f - biasPercent)) : 0L);
            long j12 = (f10 * biasPercent) + 0.5f + wrapDimension2 + (f10 * (1.0f - biasPercent)) + 0.5f;
            WidgetRun widgetRun3 = this.firstRun;
            wrapDimension = widgetRun3.start.margin + j12;
            i10 = widgetRun3.end.margin;
        } else if (contains) {
            DependencyNode dependencyNode3 = this.firstRun.start;
            return Math.max(traverseStart(dependencyNode3, dependencyNode3.margin), this.firstRun.start.margin + wrapDimension2);
        } else if (contains2) {
            DependencyNode dependencyNode4 = this.firstRun.end;
            return Math.max(-traverseEnd(dependencyNode4, dependencyNode4.margin), (-this.firstRun.end.margin) + wrapDimension2);
        } else {
            WidgetRun widgetRun4 = this.firstRun;
            wrapDimension = widgetRun4.start.margin + widgetRun4.getWrapDimension();
            i10 = this.firstRun.end.margin;
        }
        return wrapDimension - i10;
    }

    public void defineTerminalWidgets(boolean z10, boolean z11) {
        if (z10) {
            WidgetRun widgetRun = this.firstRun;
            if (widgetRun instanceof HorizontalWidgetRun) {
                defineTerminalWidget(widgetRun, 0);
            }
        }
        if (z11) {
            WidgetRun widgetRun2 = this.firstRun;
            if (widgetRun2 instanceof VerticalWidgetRun) {
                defineTerminalWidget(widgetRun2, 1);
            }
        }
    }
}
