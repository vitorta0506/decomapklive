.class public final synthetic Lcom/guochao/faceshow/guild/activity/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

.field public final synthetic d:Lcom/guochao/faceshow/guild/bean/RecordVo;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/guochao/faceshow/guild/activity/i0;->a:I

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/i0;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/guochao/faceshow/guild/activity/i0;->c:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    iput-object p4, p0, Lcom/guochao/faceshow/guild/activity/i0;->d:Lcom/guochao/faceshow/guild/bean/RecordVo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lcom/guochao/faceshow/guild/activity/i0;->a:I

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/i0;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/guild/activity/i0;->c:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    iget-object v3, p0, Lcom/guochao/faceshow/guild/activity/i0;->d:Lcom/guochao/faceshow/guild/bean/RecordVo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->d(ILjava/util/List;Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;Landroid/view/View;)V

    return-void
.end method
