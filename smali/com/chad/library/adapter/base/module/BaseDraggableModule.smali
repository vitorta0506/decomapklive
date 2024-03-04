.class public Lcom/chad/library/adapter/base/module/BaseDraggableModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u0016\u0018\u0000 f2\u00020\u0001:\u0001fB\u0017\u0012\u000e\u0010*\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030)\u00a2\u0006\u0004\u0008d\u0010eJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u0008\u0010\u0010\u001a\u00020\u0006H\u0016J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0004J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J4\u0010\"\u001a\u00020\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u0006H\u0016J\u0012\u0010%\u001a\u00020\u00022\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010(\u001a\u00020\u00022\u0008\u0010\'\u001a\u0004\u0018\u00010&H\u0016R\u001c\u0010*\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\"\u0010,\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008,\u0010.\"\u0004\u0008/\u00100R\"\u00101\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010-\u001a\u0004\u00081\u0010.\"\u0004\u00082\u00100R\"\u00103\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\"\u0010:\u001a\u0002098\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\"\u0010A\u001a\u00020@8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR$\u0010H\u001a\u0004\u0018\u00010G8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR$\u0010O\u001a\u0004\u0018\u00010N8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR*\u0010V\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u00068\u0016@VX\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010-\u001a\u0004\u0008V\u0010.\"\u0004\u0008W\u00100R$\u0010X\u001a\u0004\u0018\u00010#8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R$\u0010^\u001a\u0004\u0018\u00010&8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010c\u00a8\u0006g"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/module/BaseDraggableModule;",
        "Lx0/a;",
        "",
        "initItemTouch",
        "",
        "position",
        "",
        "inRange",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "holder",
        "initView$com_github_CymChad_brvah",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "initView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "attachToRecyclerView",
        "hasToggleView",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "getViewHolderPosition",
        "onItemDragStart",
        "source",
        "target",
        "onItemDragMoving",
        "onItemDragEnd",
        "onItemSwipeStart",
        "onItemSwipeClear",
        "onItemSwiped",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "dX",
        "dY",
        "isCurrentlyActive",
        "onItemSwiping",
        "Lx0/g;",
        "onItemDragListener",
        "setOnItemDragListener",
        "Lx0/i;",
        "onItemSwipeListener",
        "setOnItemSwipeListener",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "baseQuickAdapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "isDragEnabled",
        "Z",
        "()Z",
        "setDragEnabled",
        "(Z)V",
        "isSwipeEnabled",
        "setSwipeEnabled",
        "toggleViewId",
        "I",
        "getToggleViewId",
        "()I",
        "setToggleViewId",
        "(I)V",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "itemTouchHelper",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "getItemTouchHelper",
        "()Landroidx/recyclerview/widget/ItemTouchHelper;",
        "setItemTouchHelper",
        "(Landroidx/recyclerview/widget/ItemTouchHelper;)V",
        "Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;",
        "itemTouchHelperCallback",
        "Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;",
        "getItemTouchHelperCallback",
        "()Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;",
        "setItemTouchHelperCallback",
        "(Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;)V",
        "Landroid/view/View$OnTouchListener;",
        "mOnToggleViewTouchListener",
        "Landroid/view/View$OnTouchListener;",
        "getMOnToggleViewTouchListener",
        "()Landroid/view/View$OnTouchListener;",
        "setMOnToggleViewTouchListener",
        "(Landroid/view/View$OnTouchListener;)V",
        "Landroid/view/View$OnLongClickListener;",
        "mOnToggleViewLongClickListener",
        "Landroid/view/View$OnLongClickListener;",
        "getMOnToggleViewLongClickListener",
        "()Landroid/view/View$OnLongClickListener;",
        "setMOnToggleViewLongClickListener",
        "(Landroid/view/View$OnLongClickListener;)V",
        "value",
        "isDragOnLongPressEnabled",
        "setDragOnLongPressEnabled",
        "mOnItemDragListener",
        "Lx0/g;",
        "getMOnItemDragListener",
        "()Lx0/g;",
        "setMOnItemDragListener",
        "(Lx0/g;)V",
        "mOnItemSwipeListener",
        "Lx0/i;",
        "getMOnItemSwipeListener",
        "()Lx0/i;",
        "setMOnItemSwipeListener",
        "(Lx0/i;)V",
        "<init>",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V",
        "Companion",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NO_TOGGLE_VIEW:I


# instance fields
.field private final baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isDragEnabled:Z

.field private isDragOnLongPressEnabled:Z

.field private isSwipeEnabled:Z

.field public itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public itemTouchHelperCallback:Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;

.field private mOnItemDragListener:Lx0/g;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnItemSwipeListener:Lx0/i;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private toggleViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->Companion:Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    invoke-direct {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->initItemTouch()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragOnLongPressEnabled:Z

    return-void
.end method

.method private static final _set_isDragOnLongPressEnabled_$lambda-0(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p0

    sget v0, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.ViewHolder"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final _set_isDragOnLongPressEnabled_$lambda-1(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragOnLongPressEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p0

    sget p2, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.ViewHolder"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic a(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->_set_isDragOnLongPressEnabled_$lambda-1(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->_set_isDragOnLongPressEnabled_$lambda-0(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private final inRange(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final initItemTouch()V
    .locals 2

    .line 1
    new-instance v0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;-><init>(Lcom/chad/library/adapter/base/module/BaseDraggableModule;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->setItemTouchHelperCallback(Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;)V

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getItemTouchHelperCallback()Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->setItemTouchHelper(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    return-void
.end method


# virtual methods
.method public final attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "itemTouchHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemTouchHelperCallback()Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->itemTouchHelperCallback:Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "itemTouchHelperCallback"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getMOnItemDragListener()Lx0/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lx0/g;

    return-object v0
.end method

.method protected final getMOnItemSwipeListener()Lx0/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lx0/i;

    return-object v0
.end method

.method protected final getMOnToggleViewLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method protected final getMOnToggleViewTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public final getToggleViewId()I
    .locals 1

    iget v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->toggleViewId:I

    return v0
.end method

.method protected final getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public hasToggleView()Z
    .locals 1

    iget v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->toggleViewId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final initView$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->hasToggleView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->toggleViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragOnLongPressEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isDragEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled:Z

    return v0
.end method

.method public isDragOnLongPressEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragOnLongPressEnabled:Z

    return v0
.end method

.method public final isSwipeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    return v0
.end method

.method public onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lx0/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lx0/g;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->inRange(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->inRange(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ge v0, v1, :cond_1

    if-ge v0, v1, :cond_3

    move v2, v0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 4
    iget-object v4, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v2, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-lt v3, v1, :cond_0

    goto :goto_2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    if-gt v2, v0, :cond_3

    move v3, v0

    :goto_1
    add-int/lit8 v4, v3, -0x1

    .line 5
    iget-object v5, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-static {v5, v3, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-ne v3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_1

    .line 6
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 7
    :cond_4
    iget-object v2, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lx0/g;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v2, p1, v0, p2, v1}, Lx0/g;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :goto_3
    return-void
.end method

.method public onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lx0/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lx0/g;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onItemSwipeClear(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lx0/i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lx0/i;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lx0/i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lx0/i;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->inRange(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 5
    iget-boolean v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lx0/i;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1, v0}, Lx0/i;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemSwiping(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lx0/i;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lx0/i;->d(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled:Z

    return-void
.end method

.method public setDragOnLongPressEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragOnLongPressEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 3
    new-instance p1, Lcom/chad/library/adapter/base/module/a;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/module/a;-><init>(Lcom/chad/library/adapter/base/module/BaseDraggableModule;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/chad/library/adapter/base/module/b;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/module/b;-><init>(Lcom/chad/library/adapter/base/module/BaseDraggableModule;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 5
    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    :goto_0
    return-void
.end method

.method public final setItemTouchHelper(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/ItemTouchHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public final setItemTouchHelperCallback(Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->itemTouchHelperCallback:Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;

    return-void
.end method

.method protected final setMOnItemDragListener(Lx0/g;)V
    .locals 0
    .param p1    # Lx0/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lx0/g;

    return-void
.end method

.method protected final setMOnItemSwipeListener(Lx0/i;)V
    .locals 0
    .param p1    # Lx0/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lx0/i;

    return-void
.end method

.method protected final setMOnToggleViewLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnLongClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method protected final setMOnToggleViewTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnTouchListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOnItemDragListener(Lx0/g;)V
    .locals 0
    .param p1    # Lx0/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemDragListener:Lx0/g;

    return-void
.end method

.method public setOnItemSwipeListener(Lx0/i;)V
    .locals 0
    .param p1    # Lx0/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->mOnItemSwipeListener:Lx0/i;

    return-void
.end method

.method public final setSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled:Z

    return-void
.end method

.method public final setToggleViewId(I)V
    .locals 0

    iput p1, p0, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->toggleViewId:I

    return-void
.end method
