.class public final synthetic Lr8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr8/b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    iput-object p2, p0, Lr8/b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr8/b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    iget-object v1, p0, Lr8/b;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Ljava/util/ArrayList;)V

    return-void
.end method
