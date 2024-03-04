.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/fragment/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/p;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/p;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V

    return-void
.end method
