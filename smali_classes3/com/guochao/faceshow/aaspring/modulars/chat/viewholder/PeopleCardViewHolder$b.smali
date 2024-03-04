.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
