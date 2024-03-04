.class public final synthetic Lcom/guochao/faceshow/guild/activity/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/MyLiveActivity;

.field public final synthetic b:Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/s0;->a:Lcom/guochao/faceshow/guild/activity/MyLiveActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/s0;->b:Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/s0;->a:Lcom/guochao/faceshow/guild/activity/MyLiveActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/s0;->b:Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;

    check-cast p1, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->d0(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;Lcom/guochao/faceshow/guild/bean/LiveStaticBean;)V

    return-void
.end method
