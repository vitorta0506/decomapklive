.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->b(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/List;)V

    return-void
.end method
