.class public abstract Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000bJ\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0008\u0001\u0010\u000e\u001a\u00020\u000f\"\u00020\u000bJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u001e\u0010\u0013\u001a\u00020\u000b2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u000bH&J\u000e\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bJ\u001a\u0010\u0019\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000bH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;",
        "T",
        "",
        "layouts",
        "Landroid/util/SparseIntArray;",
        "(Landroid/util/SparseIntArray;)V",
        "autoMode",
        "",
        "selfMode",
        "addItemType",
        "type",
        "",
        "layoutResId",
        "addItemTypeAutoIncrease",
        "layoutResIds",
        "",
        "checkMode",
        "",
        "mode",
        "getItemType",
        "data",
        "",
        "position",
        "getLayoutId",
        "viewType",
        "registerItemType",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private autoMode:Z

.field private layouts:Landroid/util/SparseIntArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selfMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;-><init>(Landroid/util/SparseIntArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .locals 1
    .param p1    # Landroid/util/SparseIntArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layouts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseIntArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;-><init>(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method private final checkMode(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Don\'t mess two register mode"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final registerItemType(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public final addItemType(II)Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->selfMode:Z

    .line 2
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->autoMode:Z

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->checkMode(Z)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->registerItemType(II)V

    return-object p0
.end method

.method public final varargs addItemTypeAutoIncrease([I)Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "layoutResIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->autoMode:Z

    .line 2
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->selfMode:Z

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->checkMode(Z)V

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 4
    aget v3, p1, v1

    invoke-direct {p0, v1, v3}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->registerItemType(II)V

    if-le v2, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public abstract getItemType(Ljava/util/List;I)I
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;I)I"
        }
    .end annotation
.end method

.method public final getLayoutId(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " found layoutResId\uff0cplease use registerItemType() first!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
