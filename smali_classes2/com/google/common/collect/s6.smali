.class public final synthetic Lcom/google/common/collect/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/q6;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/q6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/s6;->a:Lcom/google/common/collect/q6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/s6;->a:Lcom/google/common/collect/q6;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/q6;->add(Ljava/lang/Object;I)I

    return-void
.end method
