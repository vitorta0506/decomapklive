.class Leh/a$e$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/a$e$a;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Leh/a$e$a;


# direct methods
.method constructor <init>(Leh/a$e$a;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Leh/a$e$a$b;->b:Leh/a$e$a;

    iput-object p2, p0, Leh/a$e$a$b;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Leh/a$e$a$b;->b:Leh/a$e$a;

    iget-object v0, v0, Leh/a$e$a;->a:Leh/a$e;

    iget-object v1, p0, Leh/a$e$a$b;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Leh/a$c;->e(Ljava/lang/Throwable;)V

    return-void
.end method
