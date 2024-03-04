.class public final synthetic Lcom/guochao/faceshow/guild/activity/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/z;->a:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    iput p2, p0, Lcom/guochao/faceshow/guild/activity/z;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/z;->a:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    iget v1, p0, Lcom/guochao/faceshow/guild/activity/z;->b:I

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;->d(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;ILandroid/view/View;)V

    return-void
.end method
