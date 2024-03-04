.class Leh/r1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Leh/r1;


# direct methods
.method constructor <init>(Leh/r1;)V
    .locals 0

    iput-object p1, p0, Leh/r1$c;->a:Leh/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leh/r1$c;->a:Leh/r1;

    invoke-static {v0}, Leh/r1;->h(Leh/r1;)V

    return-void
.end method
