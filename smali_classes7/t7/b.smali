.class public final synthetic Lt7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt7/b;->a:Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lt7/b;->a:Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;->b(Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
