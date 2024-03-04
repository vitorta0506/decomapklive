.class Leh/a$e$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/a$e$a;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/a$e$a;


# direct methods
.method constructor <init>(Leh/a$e$a;)V
    .locals 0

    iput-object p1, p0, Leh/a$e$a$c;->a:Leh/a$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leh/a$e$a$c;->a:Leh/a$e$a;

    iget-object v0, v0, Leh/a$e$a;->a:Leh/a$e;

    invoke-virtual {v0}, Leh/a$c;->d()V

    return-void
.end method
