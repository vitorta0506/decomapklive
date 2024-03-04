.class final Lde/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/d;


# direct methods
.method constructor <init>(Lde/d;)V
    .locals 0

    iput-object p1, p0, Lde/d$a;->a:Lde/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lde/d$a;->a:Lde/d;

    invoke-virtual {v0}, Lde/d;->e()V

    return-void
.end method
