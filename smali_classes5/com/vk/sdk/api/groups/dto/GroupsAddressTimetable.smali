.class public final Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BY\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J]\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;",
        "",
        "fri",
        "Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;",
        "mon",
        "sat",
        "sun",
        "thu",
        "tue",
        "wed",
        "(Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;)V",
        "getFri",
        "()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;",
        "getMon",
        "getSat",
        "getSun",
        "getThu",
        "getTue",
        "getWed",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final fri:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fri"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mon:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mon"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sat:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sat"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sun:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sun"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final thu:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thu"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tue:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tue"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final wed:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wed"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;-><init>(Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;)V
    .locals 0
    .param p1    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->fri:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    .line 3
    iput-object p2, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->mon:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    .line 4
    iput-object p3, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sat:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    .line 5
    iput-object p4, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sun:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    .line 6
    iput-object p5, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->thu:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    .line 7
    iput-object p6, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->tue:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    .line 8
    iput-object p7, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->wed:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p9, v0

    goto :goto_0

    :cond_0
    move-object p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, p5

    :goto_4
    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    move-object v5, v0

    goto :goto_5

    :cond_5
    move-object v5, p6

    :goto_5
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    move-object p8, v0

    goto :goto_6

    :cond_6
    move-object p8, p7

    :goto_6
    move-object p1, p0

    move-object p2, p9

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    move-object p7, v5

    .line 9
    invoke-direct/range {p1 .. p8}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;-><init>(Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;ILjava/lang/Object;)Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->fri:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->mon:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sat:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sun:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->thu:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->tue:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->wed:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->copy(Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;)Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->fri:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final component2()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->mon:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final component3()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sat:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final component4()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sun:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final component5()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->thu:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final component6()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->tue:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final component7()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->wed:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final copy(Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;)Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;
    .locals 9
    .param p1    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;-><init>(Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;

    iget-object v1, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->fri:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v3, p1, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->fri:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->mon:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v3, p1, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->mon:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sat:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v3, p1, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sat:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sun:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v3, p1, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sun:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->thu:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v3, p1, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->thu:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->tue:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v3, p1, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->tue:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->wed:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object p1, p1, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->wed:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getFri()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->fri:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final getMon()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->mon:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final getSat()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sat:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final getSun()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sun:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final getThu()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->thu:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final getTue()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->tue:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public final getWed()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->wed:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->fri:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->mon:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sat:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sun:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->thu:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->tue:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->wed:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->fri:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v1, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->mon:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v2, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sat:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v3, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->sun:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v4, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->thu:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v5, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->tue:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    iget-object v6, p0, Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;->wed:Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GroupsAddressTimetable(fri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mon="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sat="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sun="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", thu="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", tue="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", wed="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
