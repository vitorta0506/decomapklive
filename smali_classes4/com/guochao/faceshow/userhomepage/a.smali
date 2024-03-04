.class public final synthetic Lcom/guochao/faceshow/userhomepage/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/a;->a:Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/guochao/faceshow/userhomepage/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/a;->a:Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;->a(Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;Ljava/util/List;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
