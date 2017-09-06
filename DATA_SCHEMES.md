# Data Schemes

## Common

```typescript
/**
 * A Crowfall DataObject
 */
class DataObject {

    /**
     * The name of the data object.
     */
    name: string;

    /**
     * The description of the data object.
     */
    description: string;

    /**
     * Tags that describe this data object.
     */
    tags: string[];
}
```

## Class

```typescript
/**
 * A Crowfall Class
 */
class Class {

    /**
     * The name of the class.
     */
    name: string;

    /**
     * The description of the class.
     */
    description: string;

    /**
     * The races that this class is compatible with.
     */
    races: string[];

    /**
     * Tags that describe this class.
     */
    tags: string[];

    /**
     * The list of powers this class gives
     * (i.e. their ids).
     */
    powers: string[];
}
```

## Discipline (or Race)


```typescript
/**
 * A Crowfall Discipline (or Race)
 */
class Discipline {

    /**
     * The name of the discipline.
     */
    name: string;

    /**
     * The description of the discipline.
     */
    description: string;

    /**
     * The type of the discipline (major/minor/race)
     * (basically a string).
     */
    type: 'major' | 'minor' | 'race';

    /**
     * The classes that this discipline is compatible with.
     */
    classes: string[];

    /**
     * Tags that describe this discipline.
     */
    tags: string[];

    /**
     * The list of powers this discipline gives
     * (i.e. their ids).
     */
    powers: string[];

    /**
     * Equipment unlocked by the discipline.
     */
    equips: string[];

    /**
     * Stats granted by the discipline.
     */
    stats: { name: string, value: number }[];

    /**
     * Slots (i.e. ring) that are granted by the discipline.
     */
    slots_granted: string[];

    /**
     * Slots (i.e. ring) that are removed by the discipline.
     */
    slots_removed: string[];

    /**
     * A tray that is granted by the discipline.
     */
    tray_granted: string;

    /**
     * A tray that is removed by the discipline.
     */
    tray_removed: string;
}
```

## Power

```typescript
/**
 * A Crowfall Power
 */
class Power {

    /**
     * The name of the power.
     */
    name: string;

    /**
     * The description of the power.
     */
    description: string;

    /**
     * Tags that describe this power.
     */
    tags: string[];

    /**
     * The sources of the power. Id is the object id,
     * data_type is 'class', 'discipline', or 'power'
     * (though obviously not the last one).
     */
    sources: { id: string, data_type: string }[];

    /**
     * The type of the power.
     * Examples are:
     * buff, crowd control, crowd control self, melee attack,
     * non-aggressive, passive, ranged attack, retaliate,
     * transformation, and ultimate.
     */
    type: string;

    /**
     * The casting type of the power.
     * Examples are:
     * instant, passive, hold channeled, ground aimed,
     * channeled, charged, and toggle.
     */
    cast_type: string;

    /**
     * The targeting shape of the power.
     * Examples are:
     * ray, cone, self, sphere, area, group, rectangle,
     * reticle, and point blank area.
     */
    targeting: string;

    /**
     * The duration of the power, in seconds.
     */
    duration: number;

    /**
     * The cooldown of the power, in seconds.
     */
    cooldown: number;

    /**
     * The maximum number of targets.
     */
    max_targets: number;

    /**
     * The range of the power, in meters.
     */
    range: number;

    /**
     * The ids of the powers up next in the chain.
     */
    next_chain: string[];

    /**
     * The ids of the powers that happened previously
     * in the chain.
     */
    previous_chain: string[];
}
```
## Recipes

```typescript
/**
 * A Crowfall Recipe
 */
class Recipe {
{
  /**
  * The Name of the Recipe
  */
  name: string;

  /**
  * If this is an variable recipe, this will be set to the parent recipe
  * that yielded it.
  */
  variation_of: string;

  /**
  * The attributes name granted to the crafted item.
  */
  attribute: string;

  /**
  * The attributes value granted to the crafted item.
  */
  impact: number;

  /**
  * Chance of success, parent attribute should have this set
  * if this is a variation item.
  */
  success_chance: number;

  /**
  * A rating compared against the skill of the tradesmen to determine
  * success chance. Higher is more difficult.
  */
  difficulty: number;

  /**
  * an array of objects containing the necessary components or raw materials
  * to fashion this recipe. Each object contains a name (string) and an
  * amount (number) of required materials/components.
  */
  components: [
    {
      name: string;
      amount: number;
    }
  ]
}
```
