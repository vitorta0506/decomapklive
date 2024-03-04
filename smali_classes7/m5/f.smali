.class public final synthetic Lm5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm5/j;


# direct methods
.method public synthetic constructor <init>(Lm5/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/f;->a:Lm5/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lm5/f;->a:Lm5/j;

    invoke-static {v0}, Lm5/j;->o(Lm5/j;)V

    return-void
.end method
