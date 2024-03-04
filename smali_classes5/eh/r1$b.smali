.class Leh/r1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Leh/r1$d;


# direct methods
.method constructor <init>(Leh/r1$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leh/r1$b;->a:Leh/r1$d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leh/r1$b;->a:Leh/r1$d;

    invoke-static {v0}, Leh/r1$d;->b(Leh/r1$d;)V

    return-void
.end method
