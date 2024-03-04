.class public final synthetic Lcom/guochao/faceshow/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/utils/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/utils/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/utils/e;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/guochao/faceshow/utils/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/utils/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/PushUtils;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
