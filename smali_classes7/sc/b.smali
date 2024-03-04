.class public final synthetic Lsc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsc/d$a;


# instance fields
.field public final synthetic a:Lsc/d;


# direct methods
.method public synthetic constructor <init>(Lsc/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsc/b;->a:Lsc/d;

    return-void
.end method


# virtual methods
.method public final a(Lvc/d;)Lqc/c;
    .locals 1

    iget-object v0, p0, Lsc/b;->a:Lsc/d;

    invoke-static {v0, p1}, Lsc/d;->d(Lsc/d;Lvc/d;)Lqc/c;

    move-result-object p1

    return-object p1
.end method
