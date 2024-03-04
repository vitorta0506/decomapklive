.class public final synthetic Lcom/guochao/faceshow/guild/activity/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

.field public final synthetic b:Lcom/guochao/faceshow/guild/bean/RecordVo;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/j0;->a:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/j0;->b:Lcom/guochao/faceshow/guild/bean/RecordVo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/j0;->a:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/j0;->b:Lcom/guochao/faceshow/guild/bean/RecordVo;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->c(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;Landroid/view/View;)V

    return-void
.end method
