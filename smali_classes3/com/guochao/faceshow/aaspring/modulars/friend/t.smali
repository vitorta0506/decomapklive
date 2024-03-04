.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/friend/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/t;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/t;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
