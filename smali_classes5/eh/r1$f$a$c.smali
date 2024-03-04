.class Leh/r1$f$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r1$f$a;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/r1$f$a;


# direct methods
.method constructor <init>(Leh/r1$f$a;)V
    .locals 0

    iput-object p1, p0, Leh/r1$f$a$c;->a:Leh/r1$f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leh/r1$f$a$c;->a:Leh/r1$f$a;

    iget-object v0, v0, Leh/r1$f$a;->a:Leh/r1$f;

    invoke-virtual {v0}, Leh/r1$d;->e()V

    return-void
.end method
