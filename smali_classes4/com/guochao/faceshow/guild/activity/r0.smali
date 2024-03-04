.class public final synthetic Lcom/guochao/faceshow/guild/activity/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/MyLiveActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/r0;->a:Lcom/guochao/faceshow/guild/activity/MyLiveActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/r0;->a:Lcom/guochao/faceshow/guild/activity/MyLiveActivity;

    check-cast p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->g0(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V

    return-void
.end method
