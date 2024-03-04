.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/friend/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/r;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/r;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Ljava/util/List;)V

    return-void
.end method
