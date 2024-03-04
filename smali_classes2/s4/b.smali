.class public final synthetic Ls4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls4/a;


# direct methods
.method public synthetic constructor <init>(Ls4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/b;->a:Ls4/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ls4/b;->a:Ls4/a;

    invoke-static {v0}, Ls4/a;->e(Ls4/a;)V

    return-void
.end method
