.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;


# direct methods
.method public synthetic constructor <init>(ZLcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/o;->a:Z

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/o;->b:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/o;->a:Z

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/o;->b:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->m(ZLcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    return-void
.end method
