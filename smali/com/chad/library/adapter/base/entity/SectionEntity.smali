.class public interface abstract Lcom/chad/library/adapter/base/entity/SectionEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;,
        Lcom/chad/library/adapter/base/entity/SectionEntity$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u0000 \t2\u00020\u0001:\u0001\tR\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/entity/SectionEntity;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "isHeader",
        "",
        "()Z",
        "itemType",
        "",
        "getItemType",
        "()I",
        "Companion",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HEADER_TYPE:I = -0x63

.field public static final NORMAL_TYPE:I = -0x64


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;->$$INSTANCE:Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;

    sput-object v0, Lcom/chad/library/adapter/base/entity/SectionEntity;->Companion:Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;

    return-void
.end method


# virtual methods
.method public abstract getItemType()I
.end method

.method public abstract isHeader()Z
.end method
