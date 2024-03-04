.class public final synthetic Lcom/guochao/faceshow/aaspring/manager/im/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/manager/im/b$e;

.field public final synthetic b:J

.field public final synthetic c:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b$e;JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/c;->a:Lcom/guochao/faceshow/aaspring/manager/im/b$e;

    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/c;->b:J

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/manager/im/c;->c:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/manager/im/c;->d:Ljava/util/List;

    iput p6, p0, Lcom/guochao/faceshow/aaspring/manager/im/c;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/c;->a:Lcom/guochao/faceshow/aaspring/manager/im/b$e;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/c;->b:J

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/manager/im/c;->c:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/manager/im/c;->d:Ljava/util/List;

    iget v5, p0, Lcom/guochao/faceshow/aaspring/manager/im/c;->e:I

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/manager/im/b$e;->c(Lcom/guochao/faceshow/aaspring/manager/im/b$e;JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V

    return-void
.end method
