.class Leh/r1$f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r1$f$a;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Leh/r1$f$a;


# direct methods
.method constructor <init>(Leh/r1$f$a;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Leh/r1$f$a$b;->b:Leh/r1$f$a;

    iput-object p2, p0, Leh/r1$f$a$b;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Leh/r1$f$a$b;->b:Leh/r1$f$a;

    iget-object v0, v0, Leh/r1$f$a;->a:Leh/r1$f;

    iget-object v1, p0, Leh/r1$f$a$b;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Leh/r1$d;->f(Ljava/lang/Throwable;)V

    return-void
.end method
