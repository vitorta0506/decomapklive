.class public final Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0012\u0010!\u001a\u00020\u00142\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010$\u001a\u00020\u00142\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0010\u0010$\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u0018H\u0016J\u0010\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u0018H\u0016J\u0010\u0010*\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;",
        "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;",
        "Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;",
        "context",
        "Landroid/content/Context;",
        "titleBar",
        "Landroid/view/View;",
        "titleBarCallback",
        "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;",
        "toolbar",
        "Landroidx/appcompat/widget/Toolbar;",
        "menuCallback",
        "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;",
        "(Landroid/content/Context;Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;Landroidx/appcompat/widget/Toolbar;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;)V",
        "getContext",
        "()Landroid/content/Context;",
        "menuList",
        "",
        "Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;",
        "addMenuItem",
        "",
        "menuItem",
        "findMenuItem",
        "id",
        "",
        "getLeftBackView",
        "Landroid/widget/ImageButton;",
        "toolBar",
        "onMenuItemClick",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "removeMenuItem",
        "setNavigationIcon",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "setTitle",
        "title",
        "",
        "strId",
        "setTitleColor",
        "color",
        "updateMenuItem",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final menuCallback:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final menuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final titleBar:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final titleBarCallback:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;Landroidx/appcompat/widget/Toolbar;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleBar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleBarCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbar"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->titleBar:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->titleBarCallback:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->menuCallback:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->menuList:Ljava/util/List;

    .line 8
    new-instance p1, Lt7/a;

    invoke-direct {p1, p0}, Lt7/a;-><init>(Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;)V

    invoke-virtual {p4, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance p1, Lt7/b;

    invoke-direct {p1, p0}, Lt7/b;-><init>(Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;)V

    invoke-virtual {p4, p1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 10
    invoke-virtual {p0, p4}, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->getLeftBackView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_0

    sget p2, Lcom/guochao/lib_core/R$drawable;->icon_left_back:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;Landroidx/appcompat/widget/Toolbar;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 11
    sget p4, Lcom/guochao/lib_core/R$id;->gc_tool_bar:I

    .line 12
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    const-string p7, "titleBar.findViewById(\n \u2026   R.id.gc_tool_bar\n    )"

    invoke-static {p4, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Landroidx/appcompat/widget/Toolbar;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;Landroidx/appcompat/widget/Toolbar;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->titleBarCallback:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;->onNavigationButtonClicked(Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;Landroid/view/View;)V

    return-void
.end method

.method private static final _init_$lambda-1(Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->menuCallback:Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-interface {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;->onMenuClicked(Landroid/view/MenuItem;Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->_init_$lambda-0(Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->_init_$lambda-1(Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addMenuItem(Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->menuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->getId()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->getId()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->getTitleId()I

    move-result v3

    if-ne v3, v4, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->getTitleId()I

    move-result v5

    .line 7
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "context.resources.getStr\u2026tem.titleId\n            )"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 8
    invoke-interface {v0, v5, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->getIconId()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->getIconId()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public findMenuItem(I)Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->menuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;

    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getLeftBackView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 2
    .param p1    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const-string v1, "mNavButtonView"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.ImageButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageButton;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public removeMenuItem(Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->menuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$DefaultImpls;->setNavigationIcon(Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;I)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    return-void
.end method

.method public updateMenuItem(Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->menuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->menuList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
