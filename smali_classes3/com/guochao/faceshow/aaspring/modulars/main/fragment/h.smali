.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/fragment/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/h;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/h;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result p1

    return p1
.end method
