.class public final synthetic La6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La6/y;

.field public final synthetic b:Lk6/b;


# direct methods
.method public synthetic constructor <init>(La6/y;Lk6/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/l;->a:La6/y;

    iput-object p2, p0, La6/l;->b:Lk6/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La6/l;->a:La6/y;

    iget-object v1, p0, La6/l;->b:Lk6/b;

    invoke-static {v0, v1}, La6/o;->c(La6/y;Lk6/b;)V

    return-void
.end method
