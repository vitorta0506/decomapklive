.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/b;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/b;->b:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->b(Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
