.class public abstract Lsa/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "h"
.end annotation


# instance fields
.field private a:Lsa/a$i;

.field final synthetic b:Lsa/a;


# direct methods
.method public constructor <init>(Lsa/a;)V
    .locals 0

    iput-object p1, p0, Lsa/a$h;->b:Lsa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lsa/a$i;
    .locals 1

    iget-object v0, p0, Lsa/a$h;->a:Lsa/a$i;

    return-object v0
.end method

.method public c(Lsa/a$i;)V
    .locals 0

    iput-object p1, p0, Lsa/a$h;->a:Lsa/a$i;

    return-void
.end method
