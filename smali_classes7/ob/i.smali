.class public final synthetic Lob/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lob/j$a;


# direct methods
.method public synthetic constructor <init>(Lob/j$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob/i;->a:Lob/j$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lob/i;->a:Lob/j$a;

    invoke-static {v0}, Lob/j$a;->b(Lob/j$a;)V

    return-void
.end method
