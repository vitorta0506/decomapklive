.class public final synthetic Lcom/guochao/component/mvp/activity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/activity/f;->a:Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/f;->a:Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/guochao/component/mvp/activity/MVPActivity;->i0(Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;Landroid/view/View;IIII)V

    return-void
.end method
