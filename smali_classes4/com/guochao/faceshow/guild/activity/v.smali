.class public final synthetic Lcom/guochao/faceshow/guild/activity/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/v;->a:Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/v;->b:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/v;->a:Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/v;->b:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initPictureAdapter$1;->d(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Landroid/view/View;)V

    return-void
.end method
