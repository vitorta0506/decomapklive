.class Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_0
    return-void
.end method
