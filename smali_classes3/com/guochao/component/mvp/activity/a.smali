.class public final synthetic Lcom/guochao/component/mvp/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/component/mvp/activity/MVPActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/mvp/activity/MVPActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/activity/a;->a:Lcom/guochao/component/mvp/activity/MVPActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/a;->a:Lcom/guochao/component/mvp/activity/MVPActivity;

    invoke-static {v0, p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->d0(Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V

    return-void
.end method
