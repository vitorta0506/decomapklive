.class final Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/u0$d<",
        "Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lcom/google/protobuf/u0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision$a;->b(I)Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;
    .locals 0

    invoke-static {p1}, Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;->forNumber(I)Lio/opencensus/proto/trace/v1/ConstantSampler$ConstantDecision;

    move-result-object p1

    return-object p1
.end method
