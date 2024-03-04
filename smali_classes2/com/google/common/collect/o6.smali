.class public final synthetic Lcom/google/common/collect/o6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/function/ObjIntConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ObjIntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/o6;->a:Ljava/util/function/ObjIntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o6;->a:Ljava/util/function/ObjIntConsumer;

    check-cast p1, Lcom/google/common/collect/q6$a;

    invoke-static {v0, p1}, Lcom/google/common/collect/p6;->e(Ljava/util/function/ObjIntConsumer;Lcom/google/common/collect/q6$a;)V

    return-void
.end method
