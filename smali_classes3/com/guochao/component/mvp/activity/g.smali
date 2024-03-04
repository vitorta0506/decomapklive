.class public final synthetic Lcom/guochao/component/mvp/activity/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/component/mvp/activity/MVPActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/mvp/activity/MVPActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/activity/g;->a:Lcom/guochao/component/mvp/activity/MVPActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/g;->a:Lcom/guochao/component/mvp/activity/MVPActivity;

    check-cast p1, Lcom/guochao/component/mvp/model/MVPInfoModel;

    invoke-static {v0, p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->e0(Lcom/guochao/component/mvp/activity/MVPActivity;Lcom/guochao/component/mvp/model/MVPInfoModel;)V

    return-void
.end method
