.class public final synthetic Lm5/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/e;


# instance fields
.field public final synthetic a:Lm5/k0;


# direct methods
.method public synthetic constructor <init>(Lm5/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/j0;->a:Lm5/k0;

    return-void
.end method


# virtual methods
.method public final a()Lio/grpc/q0;
    .locals 1

    iget-object v0, p0, Lm5/j0;->a:Lm5/k0;

    invoke-static {v0}, Lm5/k0;->k(Lm5/k0;)Lio/grpc/q0;

    move-result-object v0

    return-object v0
.end method
